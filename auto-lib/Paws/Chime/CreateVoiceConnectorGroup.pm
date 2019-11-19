
package Paws::Chime::CreateVoiceConnectorGroup;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Chime::Types qw/Chime_VoiceConnectorItem/;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VoiceConnectorItems => (is => 'ro', isa => ArrayRef[Chime_VoiceConnectorItem], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateVoiceConnectorGroup');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/voice-connector-groups');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::CreateVoiceConnectorGroupResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'VoiceConnectorItems' => {
                                          'type' => 'ArrayRef[Chime_VoiceConnectorItem]',
                                          'class' => 'Paws::Chime::VoiceConnectorItem'
                                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateVoiceConnectorGroup - Arguments for method CreateVoiceConnectorGroup on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVoiceConnectorGroup on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateVoiceConnectorGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVoiceConnectorGroup.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateVoiceConnectorGroupResponse = $chime->CreateVoiceConnectorGroup(
      Name                => 'MyVoiceConnectorGroupName',
      VoiceConnectorItems => [
        {
          Priority         => 1,                    # min: 1, max: 99
          VoiceConnectorId => 'MyNonEmptyString',

        },
        ...
      ],                                            # OPTIONAL
    );

    # Results:
    my $VoiceConnectorGroup =
      $CreateVoiceConnectorGroupResponse->VoiceConnectorGroup;

    # Returns a L<Paws::Chime::CreateVoiceConnectorGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateVoiceConnectorGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the Amazon Chime Voice Connector group.



=head2 VoiceConnectorItems => ArrayRef[Chime_VoiceConnectorItem]

The Amazon Chime Voice Connectors to route inbound calls to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVoiceConnectorGroup in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

