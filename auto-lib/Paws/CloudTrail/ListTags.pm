
package Paws::CloudTrail::ListTags;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdList => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListTags - Arguments for method ListTags on Paws::CloudTrail

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the 
AWS CloudTrail service. Use the attributes of this class
as arguments to method ListTags.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

As an example:

  $service_obj->ListTags(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 NextToken => Str

  

Reserved for future use.










=head2 B<REQUIRED> ResourceIdList => ArrayRef[Str]

  

Specifies a list of trail ARNs whose tags will be listed. The list has
a limit of 20 ARNs. The format of a trail ARN is
C<arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail>.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

