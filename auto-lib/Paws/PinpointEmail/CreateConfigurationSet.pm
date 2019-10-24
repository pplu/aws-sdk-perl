
package Paws::PinpointEmail::CreateConfigurationSet;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_TrackingOptions PinpointEmail_SendingOptions PinpointEmail_Tag PinpointEmail_ReputationOptions PinpointEmail_DeliveryOptions/;
  has ConfigurationSetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeliveryOptions => (is => 'ro', isa => PinpointEmail_DeliveryOptions, predicate => 1);
  has ReputationOptions => (is => 'ro', isa => PinpointEmail_ReputationOptions, predicate => 1);
  has SendingOptions => (is => 'ro', isa => PinpointEmail_SendingOptions, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[PinpointEmail_Tag], predicate => 1);
  has TrackingOptions => (is => 'ro', isa => PinpointEmail_TrackingOptions, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateConfigurationSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/email/configuration-sets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PinpointEmail::CreateConfigurationSetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReputationOptions' => {
                                        'class' => 'Paws::PinpointEmail::ReputationOptions',
                                        'type' => 'PinpointEmail_ReputationOptions'
                                      },
               'DeliveryOptions' => {
                                      'class' => 'Paws::PinpointEmail::DeliveryOptions',
                                      'type' => 'PinpointEmail_DeliveryOptions'
                                    },
               'ConfigurationSetName' => {
                                           'type' => 'Str'
                                         },
               'TrackingOptions' => {
                                      'class' => 'Paws::PinpointEmail::TrackingOptions',
                                      'type' => 'PinpointEmail_TrackingOptions'
                                    },
               'Tags' => {
                           'class' => 'Paws::PinpointEmail::Tag',
                           'type' => 'ArrayRef[PinpointEmail_Tag]'
                         },
               'SendingOptions' => {
                                     'class' => 'Paws::PinpointEmail::SendingOptions',
                                     'type' => 'PinpointEmail_SendingOptions'
                                   }
             },
  'IsRequired' => {
                    'ConfigurationSetName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateConfigurationSet - Arguments for method CreateConfigurationSet on L<Paws::PinpointEmail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfigurationSet on the
L<Amazon Pinpoint Email Service|Paws::PinpointEmail> service. Use the attributes of this class
as arguments to method CreateConfigurationSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfigurationSet.

=head1 SYNOPSIS

    my $email = Paws->service('PinpointEmail');
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



=head2 DeliveryOptions => PinpointEmail_DeliveryOptions

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.



=head2 ReputationOptions => PinpointEmail_ReputationOptions

An object that defines whether or not Amazon Pinpoint collects
reputation metrics for the emails that you send that use the
configuration set.



=head2 SendingOptions => PinpointEmail_SendingOptions

An object that defines whether or not Amazon Pinpoint can send email
that you send using the configuration set.



=head2 Tags => ArrayRef[PinpointEmail_Tag]

An array of objects that define the tags (keys and values) that you
want to associate with the configuration set.



=head2 TrackingOptions => PinpointEmail_TrackingOptions

An object that defines the open and click tracking options for emails
that you send using the configuration set.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfigurationSet in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

