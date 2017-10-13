
package Paws::ES::ListTags;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/tags/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::ListTagsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListTags - Arguments for method ListTags on Paws::ES

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the 
Amazon Elasticsearch Service service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

As an example:

  $service_obj->ListTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ARN => Str

Specify the C<ARN> for the Elasticsearch domain to which the tags are
attached that you want to view.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

