
package Paws::SESv2::CreateConfigurationSet;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_Tag SESv2_TrackingOptions SESv2_SendingOptions SESv2_ReputationOptions SESv2_DeliveryOptions/;
  has ConfigurationSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeliveryOptions => (is => 'ro', isa => SESv2_DeliveryOptions, predicate => 1);
  has ReputationOptions => (is => 'ro', isa => SESv2_ReputationOptions, predicate => 1);
  has SendingOptions => (is => 'ro', isa => SESv2_SendingOptions, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[SESv2_Tag], predicate => 1);
  has TrackingOptions => (is => 'ro', isa => SESv2_TrackingOptions, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateConfigurationSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v2/email/configuration-sets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SESv2::CreateConfigurationSetResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ConfigurationSetName' => 1
                  },
  'types' => {
               'TrackingOptions' => {
                                      'type' => 'SESv2_TrackingOptions',
                                      'class' => 'Paws::SESv2::TrackingOptions'
                                    },
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'type' => 'ArrayRef[SESv2_Tag]',
                           'class' => 'Paws::SESv2::Tag'
                         },
               'DeliveryOptions' => {
                                      'type' => 'SESv2_DeliveryOptions',
                                      'class' => 'Paws::SESv2::DeliveryOptions'
                                    },
               'ReputationOptions' => {
                                        'class' => 'Paws::SESv2::ReputationOptions',
                                        'type' => 'SESv2_ReputationOptions'
                                      },
               'SendingOptions' => {
                                     'type' => 'SESv2_SendingOptions',
                                     'class' => 'Paws::SESv2::SendingOptions'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateConfigurationSet - Arguments for method CreateConfigurationSet on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSet on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateConfigurationSetResponse = $email->CreateConfigurationSet(
      ConfigurationSetName => 'MyConfigurationSetName',
      DeliveryOptions      => {
        SendingPoolName => 'MyPoolName',   # OPTIONAL
        TlsPolicy       => 'REQUIRE',      # values: REQUIRE, OPTIONAL; OPTIONAL
      },    # OPTIONAL
      ReputationOptions => {
        LastFreshStart           => '1970-01-01T01:00:00',    # OPTIONAL
        ReputationMetricsEnabled => 1,                        # OPTIONAL
      },    # OPTIONAL
      SendingOptions => {
        SendingEnabled => 1,    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',
          Value => 'MyTagValue',

        },
        ...
      ],    # OPTIONAL
      TrackingOptions => {
        CustomRedirectDomain => 'MyCustomRedirectDomain',

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateConfigurationSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationSetName => Str

The name of the configuration set.



=head2 DeliveryOptions => SESv2_DeliveryOptions

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.



=head2 ReputationOptions => SESv2_ReputationOptions

An object that defines whether or not Amazon SES collects reputation
metrics for the emails that you send that use the configuration set.



=head2 SendingOptions => SESv2_SendingOptions

An object that defines whether or not Amazon SES can send email that
you send using the configuration set.



=head2 Tags => ArrayRef[SESv2_Tag]

An array of objects that define the tags (keys and values) that you
want to associate with the configuration set.



=head2 TrackingOptions => SESv2_TrackingOptions

An object that defines the open and click tracking options for emails
that you send using the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSet in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

