
package Paws::SESv2::PutDeliverabilityDashboardOption;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_DomainDeliverabilityTrackingOption/;
  has DashboardEnabled => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has SubscribedDomains => (is => 'ro', isa => ArrayRef[SESv2_DomainDeliverabilityTrackingOption], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutDeliverabilityDashboardOption');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/deliverability-dashboard');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::PutDeliverabilityDashboardOptionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DashboardEnabled' => {
                                       'type' => 'Bool'
                                     },
               'SubscribedDomains' => {
                                        'type' => 'ArrayRef[SESv2_DomainDeliverabilityTrackingOption]',
                                        'class' => 'Paws::SESv2::DomainDeliverabilityTrackingOption'
                                      }
             },
  'IsRequired' => {
                    'DashboardEnabled' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::PutDeliverabilityDashboardOption - Arguments for method PutDeliverabilityDashboardOption on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDeliverabilityDashboardOption on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method PutDeliverabilityDashboardOption.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDeliverabilityDashboardOption.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $PutDeliverabilityDashboardOptionResponse =
      $email->PutDeliverabilityDashboardOption(
      DashboardEnabled  => 1,
      SubscribedDomains => [
        {
          Domain                       => 'MyDomain',    # OPTIONAL
          InboxPlacementTrackingOption => {
            Global      => 1,
            TrackedIsps => [ 'MyIspName', ... ],         # OPTIONAL
          },    # OPTIONAL
          SubscriptionStartDate => '1970-01-01T01:00:00',    # OPTIONAL
        },
        ...
      ],                                                     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/PutDeliverabilityDashboardOption>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardEnabled => Bool

Specifies whether to enable the Deliverability dashboard. To enable the
dashboard, set this value to C<true>.



=head2 SubscribedDomains => ArrayRef[SESv2_DomainDeliverabilityTrackingOption]

An array of objects, one for each verified domain that you use to send
email and enabled the Deliverability dashboard for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDeliverabilityDashboardOption in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

