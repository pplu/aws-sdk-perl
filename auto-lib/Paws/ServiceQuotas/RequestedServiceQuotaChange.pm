# Generated by default/object.tt
package Paws::ServiceQuotas::RequestedServiceQuotaChange;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str');
  has Created => (is => 'ro', isa => 'Str');
  has DesiredValue => (is => 'ro', isa => 'Num');
  has GlobalQuota => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has QuotaArn => (is => 'ro', isa => 'Str');
  has QuotaCode => (is => 'ro', isa => 'Str');
  has QuotaName => (is => 'ro', isa => 'Str');
  has Requester => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::RequestedServiceQuotaChange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::RequestedServiceQuotaChange object:

  $service_obj->Method(Att1 => { CaseId => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::RequestedServiceQuotaChange object:

  $result = $service_obj->Method(...);
  $result->Att1->CaseId

=head1 DESCRIPTION

Information about a quota increase request.

=head1 ATTRIBUTES


=head2 CaseId => Str

The case ID.


=head2 Created => Str

The date and time when the quota increase request was received and the
case ID was created.


=head2 DesiredValue => Num

The new, increased value for the quota.


=head2 GlobalQuota => Bool

Indicates whether the quota is global.


=head2 Id => Str

The unique identifier.


=head2 LastUpdated => Str

The date and time of the most recent change.


=head2 QuotaArn => Str

The Amazon Resource Name (ARN) of the quota.


=head2 QuotaCode => Str

The quota identifier.


=head2 QuotaName => Str

The quota name.


=head2 Requester => Str

The IAM identity of the requester.


=head2 ServiceCode => Str

The service identifier.


=head2 ServiceName => Str

The service name.


=head2 Status => Str

The state of the quota increase request.


=head2 Unit => Str

The unit of measurement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

