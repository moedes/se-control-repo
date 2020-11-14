## site.pp ##

# Class declarations and lookup
$classes = lookup('classes', Array, unique, "")

# Disable filebucket by default for all File resources:
File { backup => false }

# Applications managed by App Orchestrator are defined in the site block.
site {

}

node default {
  # Check if we have set the role for this node via trusted fact, pp_role.  If yes; include that role directly here.
  if !empty( $trusted['extensions']['pp_role'] ) {
    $role = $trusted['extensions']['pp_role']
    if defined("role::${role}") {
      include "role::${role}"
    }
  }
  # include $classes
}

# $classes = lookup('classes', Array, unique, "")
# $excluded_classes = lookup('excluded_classes', Array, unique, "")
# $total_classes = $classes - $excluded_classes
# include $total_classes
