package Paws::Support::TrustedAdvisorResourceDetail;
  use Moose;
  has isSuppressed => (is => 'ro', isa => 'Bool');
  has metadata => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has region => (is => 'ro', isa => 'Str', required => 1);
  has resourceId => (is => 'ro', isa => 'Str', required => 1);
  has status => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::TrustedAdvisorResourceDetail

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Support::TrustedAdvisorResourceDetail object:

  $service_obj->Method(Att1 => { isSuppressed => $value, ..., status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Support::TrustedAdvisorResourceDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->isSuppressed

=head1 ATTRIBUTES

=head2 isSuppressed => Bool

  

Specifies whether the AWS resource was ignored by Trusted Advisor
because it was marked as suppressed by the user.










=head2 B<REQUIRED> metadata => ArrayRef[Str]

  

Additional information about the identified resource. The exact
metadata and its order can be obtained by inspecting the
TrustedAdvisorCheckDescription object returned by the call to
DescribeTrustedAdvisorChecks. B<Metadata> contains all the data that is
shown in the Excel download, even in those cases where the UI shows
just summary data.










=head2 B<REQUIRED> region => Str

  

The AWS region in which the identified resource is located.










=head2 B<REQUIRED> resourceId => Str

  

The unique identifier for the identified resource.










=head2 B<REQUIRED> status => Str

  

The status code for the resource identified in the Trusted Advisor
check.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

