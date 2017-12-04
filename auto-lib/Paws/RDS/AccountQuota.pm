package Paws::RDS::AccountQuota;
  use Moose;
  has AccountQuotaName => (is => 'ro', isa => 'Str');
  has Max => (is => 'ro', isa => 'Int');
  has Used => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AccountQuota

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::AccountQuota object:

  $service_obj->Method(Att1 => { AccountQuotaName => $value, ..., Used => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::AccountQuota object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountQuotaName

=head1 DESCRIPTION

Describes a quota for an AWS account, for example, the number of DB
instances allowed.

=head1 ATTRIBUTES


=head2 AccountQuotaName => Str

  The name of the Amazon RDS quota for this AWS account.


=head2 Max => Int

  The maximum allowed value for the quota.


=head2 Used => Int

  The amount currently used toward the quota maximum.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

