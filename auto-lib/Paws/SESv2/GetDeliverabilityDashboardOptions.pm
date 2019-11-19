
package Paws::SESv2::GetDeliverabilityDashboardOptions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SESv2::Types qw//;

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetDeliverabilityDashboardOptions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/deliverability-dashboard');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::GetDeliverabilityDashboardOptionsResponse');

    sub params_map {
    our $Params_map ||= {}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetDeliverabilityDashboardOptions - Arguments for method GetDeliverabilityDashboardOptions on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDeliverabilityDashboardOptions on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetDeliverabilityDashboardOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDeliverabilityDashboardOptions.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetDeliverabilityDashboardOptionsResponse =
      $email->GetDeliverabilityDashboardOptions();

    # Results:
    my $AccountStatus =
      $GetDeliverabilityDashboardOptionsResponse->AccountStatus;
    my $ActiveSubscribedDomains =
      $GetDeliverabilityDashboardOptionsResponse->ActiveSubscribedDomains;
    my $DashboardEnabled =
      $GetDeliverabilityDashboardOptionsResponse->DashboardEnabled;
    my $PendingExpirationSubscribedDomains =
      $GetDeliverabilityDashboardOptionsResponse
      ->PendingExpirationSubscribedDomains;
    my $SubscriptionExpiryDate =
      $GetDeliverabilityDashboardOptionsResponse->SubscriptionExpiryDate;

   # Returns a L<Paws::SESv2::GetDeliverabilityDashboardOptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetDeliverabilityDashboardOptions>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDeliverabilityDashboardOptions in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

