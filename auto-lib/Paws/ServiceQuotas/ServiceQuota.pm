# Generated from default/object.tt
package Paws::ServiceQuotas::ServiceQuota;
  use Moo;
  use Types::Standard qw/Bool Str Num/;
  use Paws::ServiceQuotas::Types qw/ServiceQuotas_MetricInfo ServiceQuotas_QuotaPeriod ServiceQuotas_ErrorReason/;
  has Adjustable => (is => 'ro', isa => Bool);
  has ErrorReason => (is => 'ro', isa => ServiceQuotas_ErrorReason);
  has GlobalQuota => (is => 'ro', isa => Bool);
  has Period => (is => 'ro', isa => ServiceQuotas_QuotaPeriod);
  has QuotaArn => (is => 'ro', isa => Str);
  has QuotaCode => (is => 'ro', isa => Str);
  has QuotaName => (is => 'ro', isa => Str);
  has ServiceCode => (is => 'ro', isa => Str);
  has ServiceName => (is => 'ro', isa => Str);
  has Unit => (is => 'ro', isa => Str);
  has UsageMetric => (is => 'ro', isa => ServiceQuotas_MetricInfo);
  has Value => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceCode' => {
                                  'type' => 'Str'
                                },
               'Value' => {
                            'type' => 'Num'
                          },
               'ServiceName' => {
                                  'type' => 'Str'
                                },
               'QuotaArn' => {
                               'type' => 'Str'
                             },
               'ErrorReason' => {
                                  'class' => 'Paws::ServiceQuotas::ErrorReason',
                                  'type' => 'ServiceQuotas_ErrorReason'
                                },
               'Period' => {
                             'class' => 'Paws::ServiceQuotas::QuotaPeriod',
                             'type' => 'ServiceQuotas_QuotaPeriod'
                           },
               'QuotaCode' => {
                                'type' => 'Str'
                              },
               'GlobalQuota' => {
                                  'type' => 'Bool'
                                },
               'QuotaName' => {
                                'type' => 'Str'
                              },
               'UsageMetric' => {
                                  'class' => 'Paws::ServiceQuotas::MetricInfo',
                                  'type' => 'ServiceQuotas_MetricInfo'
                                },
               'Unit' => {
                           'type' => 'Str'
                         },
               'Adjustable' => {
                                 'type' => 'Bool'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::ServiceQuota

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceQuotas::ServiceQuota object:

  $service_obj->Method(Att1 => { Adjustable => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceQuotas::ServiceQuota object:

  $result = $service_obj->Method(...);
  $result->Att1->Adjustable

=head1 DESCRIPTION

A structure that contains the full set of details that define the
service quota.

=head1 ATTRIBUTES


=head2 Adjustable => Bool

  Specifies if the quota value can be increased.


=head2 ErrorReason => ServiceQuotas_ErrorReason

  Specifies the C<ErrorCode> and C<ErrorMessage> when success isn't
achieved.


=head2 GlobalQuota => Bool

  Specifies if the quota is global.


=head2 Period => ServiceQuotas_QuotaPeriod

  Identifies the unit and value of how time is measured.


=head2 QuotaArn => Str

  The Amazon Resource Name (ARN) of the service quota.


=head2 QuotaCode => Str

  The code identifier for the service quota specified.


=head2 QuotaName => Str

  The name identifier of the service quota.


=head2 ServiceCode => Str

  Specifies the service that you want to use.


=head2 ServiceName => Str

  The name of the AWS service specified in the increase request.


=head2 Unit => Str

  The unit of measurement for the value of the service quota.


=head2 UsageMetric => ServiceQuotas_MetricInfo

  Specifies the details about the measurement.


=head2 Value => Num

  The value of service quota.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

