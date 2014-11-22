package Paws::API::Attribute::Trait::Unwrapped {
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('Unwrapped');
  has xmlname => (is => 'ro', isa => 'Str');
}

1;
