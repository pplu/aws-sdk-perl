package Paws::IAM::RoleLastUsed;
  use Moose;
  has LastUsedDate => (is => 'ro', isa => 'Str');
  has Region => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::RoleLastUsed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::RoleLastUsed object:

  $service_obj->Method(Att1 => { LastUsedDate => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::RoleLastUsed object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUsedDate

=head1 DESCRIPTION

Contains information about the last time that an IAM role was used.
This includes the date and time and the Region in which the role was
last used. Activity is only reported for the trailing 400 days. This
period can be shorter if your Region began supporting these features
within the last year. The role might have been used more than 400 days
ago. For more information, see Regions Where Data Is Tracked
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
in the I<IAM User Guide>.

This data type is returned as a response element in the GetRole and
GetAccountAuthorizationDetails operations.

=head1 ATTRIBUTES


=head2 LastUsedDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601) that the role was last used.

This field is null if the role has not been used within the IAM
tracking period. For more information about the tracking period, see
Regions Where Data Is Tracked
(https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period)
in the I<IAM User Guide>.


=head2 Region => Str

  The name of the AWS Region in which the role was last used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

