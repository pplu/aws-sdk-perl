package Paws::IAM::AccessKeyLastUsed;
  use Moose;
  has LastUsedDate => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str', required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::AccessKeyLastUsed

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::AccessKeyLastUsed object:

  $service_obj->Method(Att1 => { LastUsedDate => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::AccessKeyLastUsed object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUsedDate

=head1 DESCRIPTION

Contains information about the last time an AWS access key was used
since IAM began tracking this information on April 22, 2015.

This data type is used as a response element in the
GetAccessKeyLastUsed operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LastUsedDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the access key was most recently
used. This field is null in the following situations:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has not been used since IAM began tracking
this information.

=item *

There is no sign-in data associated with the user

=back



=head2 B<REQUIRED> Region => Str

  The AWS region where this access key was most recently used. The value
for this field is "N/A" in the following situations:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has not been used since IAM began tracking
this information.

=item *

There is no sign-in data associated with the user

=back

For more information about AWS regions, see Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html) in the Amazon
Web Services General Reference.


=head2 B<REQUIRED> ServiceName => Str

  The name of the AWS service with which this access key was most
recently used. The value of this field is "N/A" in the following
situations:

=over

=item *

The user does not have an access key.

=item *

An access key exists but has not been used since IAM started tracking
this information.

=item *

There is no sign-in data associated with the user

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

