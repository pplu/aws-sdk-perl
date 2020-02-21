package Paws::CloudFront::AliasICPRecordal;
  use Moose;
  has CNAME => (is => 'ro', isa => 'Str');
  has ICPRecordalStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::AliasICPRecordal

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::AliasICPRecordal object:

  $service_obj->Method(Att1 => { CNAME => $value, ..., ICPRecordalStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::AliasICPRecordal object:

  $result = $service_obj->Method(...);
  $result->Att1->CNAME

=head1 DESCRIPTION

AWS services in China customers must file for an Internet Content
Provider (ICP) recordal if they want to serve content publicly on an
alternate domain name, also known as a CNAME, that they've added to
CloudFront. AliasICPRecordal provides the ICP recordal status for
CNAMEs associated with distributions. The status is returned in the
CloudFront response; you can't configure it yourself.

For more information about ICP recordals, see Signup, Accounts, and
Credentials
(https://docs.amazonaws.cn/en_us/aws/latest/userguide/accounts-and-credentials.html)
in I<Getting Started with AWS services in China>.

=head1 ATTRIBUTES


=head2 CNAME => Str

  A domain name associated with a distribution.


=head2 ICPRecordalStatus => Str

  The Internet Content Provider (ICP) recordal status for a CNAME. The
ICPRecordalStatus is set to APPROVED for all CNAMEs (aliases) in
regions outside of China.

The status values returned are the following:

=over

=item *

B<APPROVED> indicates that the associated CNAME has a valid ICP
recordal number. Multiple CNAMEs can be associated with a distribution,
and CNAMEs can correspond to different ICP recordals. To be marked as
APPROVED, that is, valid to use with China region, a CNAME must have
one ICP recordal number associated with it.

=item *

B<SUSPENDED> indicates that the associated CNAME does not have a valid
ICP recordal number.

=item *

B<PENDING> indicates that CloudFront can't determine the ICP recordal
status of the CNAME associated with the distribution because there was
an error in trying to determine the status. You can try again to see if
the error is resolved in which case CloudFront returns an APPROVED or
SUSPENDED status.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

