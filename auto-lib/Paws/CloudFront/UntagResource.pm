
package Paws::CloudFront::UntagResource;
  use Moose;
  has Resource => (is => 'ro', isa => 'Str', query_name => 'Resource', traits => ['ParamInQuery'], required => 1);
  has TagKeys => (is => 'ro', isa => 'Paws::CloudFront::TagKeys', required => 1);

  has 'Operation' => (is => 'ro', isa => 'Str', default => sub { 'Untag' }, traits => ['ParamInQuery'], query_name => 'Operation');
  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2016-11-25/tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UntagResource - Arguments for method UntagResource on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource2016_11_25 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method UntagResource2016_11_25.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource2016_11_25.

As an example:

  $service_obj->UntagResource2016_11_25(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Resource => Str

An ARN of a CloudFront resource.



=head2 B<REQUIRED> TagKeys => L<Paws::CloudFront::TagKeys>

A complex type that contains zero or more C<Tag> key elements.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource2016_11_25 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

