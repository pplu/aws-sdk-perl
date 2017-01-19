
package Paws::DynamoDB::ListTagsOfResource;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsOfResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::ListTagsOfResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListTagsOfResource - Arguments for method ListTagsOfResource on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsOfResource on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method ListTagsOfResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsOfResource.

As an example:

  $service_obj->ListTagsOfResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional string that, if supplied, must be copied from the output of
a previous call to ListTagOfResource. When provided in this manner,
this API fetches the next page of results.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon DynamoDB resource with tags to be listed. This value is an
Amazon Resource Name (ARN).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsOfResource in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

