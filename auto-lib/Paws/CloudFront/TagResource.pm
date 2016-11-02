
package Paws::CloudFront::TagResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Resource' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-09-29/tagging?Operation=Tag');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::TagResource - Arguments for method TagResource on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource2016_09_29 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method TagResource2016_09_29.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource2016_09_29.

As an example:

  $service_obj->TagResource2016_09_29(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

An ARN of a CloudFront resource.



=head2 B<REQUIRED> Tags => L<Paws::CloudFront::Tags>

A complex type that contains zero or more C<Tag> elements.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource2016_09_29 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

