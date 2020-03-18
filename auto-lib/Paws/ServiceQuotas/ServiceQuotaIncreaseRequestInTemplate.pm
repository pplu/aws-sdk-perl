package Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate;
  use Moose;
  has AwsRegion => (is => 'ro', isa => 'Str');
  has DesiredValue => (is => 'ro', isa => 'Num');
  has GlobalQuota => (is => 'ro', isa => 'Bool');
  has QuotaCode => (is => 'ro', isa => 'Str');
  has QuotaName => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate object:

  $service_obj->Method(Att1 => { AwsRegion => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::ServiceQuotaIncreaseRequestInTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsRegion

=head1 DESCRIPTION

A structure that contains information about one service quota increase
request.

=head1 ATTRIBUTES


=head2 AwsRegion => Str

  The AWS Region where the increase request occurs.


=head2 DesiredValue => Num

  Identifies the new, increased value of the service quota in the
increase request.


=head2 GlobalQuota => Bool

  Specifies if the quota is a global quota.


=head2 QuotaCode => Str

  The code identifier for the service quota specified in the increase
request.


=head2 QuotaName => Str

  The name of the service quota in the increase request.


=head2 ServiceCode => Str

  The code identifier for the AWS service specified in the increase
request.


=head2 ServiceName => Str

  The name of the AWS service specified in the increase request.


=head2 Unit => Str

  The unit of measure for the increase request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

