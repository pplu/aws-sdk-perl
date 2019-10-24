# Generated from json/callargs_class.tt

package Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceQuotas::Types qw//;
  has AwsRegion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QuotaCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ServiceCode => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetServiceQuotaIncreaseRequestFromTemplate');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceCode' => {
                                  'type' => 'Str'
                                },
               'AwsRegion' => {
                                'type' => 'Str'
                              },
               'QuotaCode' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ServiceCode' => 1,
                    'AwsRegion' => 1,
                    'QuotaCode' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplate - Arguments for method GetServiceQuotaIncreaseRequestFromTemplate on L<Paws::ServiceQuotas>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceQuotaIncreaseRequestFromTemplate on the
L<Service Quotas|Paws::ServiceQuotas> service. Use the attributes of this class
as arguments to method GetServiceQuotaIncreaseRequestFromTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceQuotaIncreaseRequestFromTemplate.

=head1 SYNOPSIS

    my $servicequotas = Paws->service('ServiceQuotas');
    my $GetServiceQuotaIncreaseRequestFromTemplateResponse =
      $servicequotas->GetServiceQuotaIncreaseRequestFromTemplate(
      AwsRegion   => 'MyAwsRegion',
      QuotaCode   => 'MyQuotaCode',
      ServiceCode => 'MyServiceCode',

      );

    # Results:
    my $ServiceQuotaIncreaseRequestInTemplate =
      $GetServiceQuotaIncreaseRequestFromTemplateResponse
      ->ServiceQuotaIncreaseRequestInTemplate;

# Returns a L<Paws::ServiceQuotas::GetServiceQuotaIncreaseRequestFromTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicequotas/GetServiceQuotaIncreaseRequestFromTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsRegion => Str

Specifies the AWS Region for the quota that you want to use.



=head2 B<REQUIRED> QuotaCode => Str

Specifies the quota you want.



=head2 B<REQUIRED> ServiceCode => Str

Specifies the service that you want to use.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceQuotaIncreaseRequestFromTemplate in L<Paws::ServiceQuotas>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

