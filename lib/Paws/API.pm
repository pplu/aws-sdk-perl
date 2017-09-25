package Paws::API::Attribute::Trait::NameInRequest;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('NameInRequest');
  has request_name => (is => 'ro', isa => 'Str');

package Paws::API::Attribute::Trait::ParamInHeader;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('ParamInHeader');
  has header_name => (is => 'ro', isa => 'Str');

package Paws::API::Attribute::Trait::ParamInBody;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('ParamInBody');

package Paws::API::Attribute::Trait::ParamInQuery;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('ParamInQuery');
  has query_name => (is => 'ro', isa => 'Str');

package Paws::API::Attribute::Trait::ParamInURI;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('ParamInURI');
  has uri_name => (is => 'ro', isa => 'Str');

package Paws::API::Attribute::Trait::ParamInHeaders;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('ParamInHeaders');
  has header_prefix => (is => 'ro', isa => 'Str');

package Paws::API::Attribute::Trait::AutoInHeader;
  use Moose::Role;
  use Moose::Util;
  Moose::Util::meta_attribute_alias('AutoInHeader');
  has auto => (is => 'ro', isa => 'Str');
  has header_name => (is => 'ro', isa => 'Str');
1;
