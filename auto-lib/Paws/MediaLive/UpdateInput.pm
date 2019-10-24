
package Paws::MediaLive::UpdateInput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_MediaConnectFlowRequest MediaLive_InputSourceRequest MediaLive_InputDestinationRequest/;
  has Destinations => (is => 'ro', isa => ArrayRef[MediaLive_InputDestinationRequest], predicate => 1);
  has InputSecurityGroups => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MediaConnectFlows => (is => 'ro', isa => ArrayRef[MediaLive_MediaConnectFlowRequest], predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, predicate => 1);
  has Sources => (is => 'ro', isa => ArrayRef[MediaLive_InputSourceRequest], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateInput');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/prod/inputs/{inputId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaLive::UpdateInputResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sources' => {
                              'class' => 'Paws::MediaLive::InputSourceRequest',
                              'type' => 'ArrayRef[MediaLive_InputSourceRequest]'
                            },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'InputSecurityGroups' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'Destinations' => {
                                   'class' => 'Paws::MediaLive::InputDestinationRequest',
                                   'type' => 'ArrayRef[MediaLive_InputDestinationRequest]'
                                 },
               'MediaConnectFlows' => {
                                        'class' => 'Paws::MediaLive::MediaConnectFlowRequest',
                                        'type' => 'ArrayRef[MediaLive_MediaConnectFlowRequest]'
                                      },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Sources' => 'sources',
                       'RoleArn' => 'roleArn',
                       'InputSecurityGroups' => 'inputSecurityGroups',
                       'Destinations' => 'destinations',
                       'MediaConnectFlows' => 'mediaConnectFlows',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateInput - Arguments for method UpdateInput on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInput on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateInput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInput.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateInputResponse = $medialive->UpdateInput(
      Destinations => [
        {
          StreamName => 'My__string',    # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      InputSecurityGroups => [
        'My__string', ...                # OPTIONAL
      ],                                 # OPTIONAL
      MediaConnectFlows => [
        {
          FlowArn => 'My__string',       # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
      Name    => 'My__string',           # OPTIONAL
      RoleArn => 'My__string',           # OPTIONAL
      Sources => [
        {
          PasswordParam => 'My__string',    # OPTIONAL
          Url           => 'My__string',    # OPTIONAL
          Username      => 'My__string',    # OPTIONAL
        },
        ...
      ],                                    # OPTIONAL
    );

    # Results:
    my $Input = $UpdateInputResponse->Input;

    # Returns a L<Paws::MediaLive::UpdateInputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateInput>

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[MediaLive_InputDestinationRequest]

Destination settings for PUSH type inputs.



=head2 InputSecurityGroups => ArrayRef[Str|Undef]

A list of security groups referenced by IDs to attach to the input.



=head2 MediaConnectFlows => ArrayRef[MediaLive_MediaConnectFlowRequest]

A list of the MediaConnect Flow ARNs that you want to use as the source
of the input. You can specify as few as one Flow and presently, as many
as two. The only requirement is when you have more than one is that
each Flow is in a separate Availability Zone as this ensures your EML
input is redundant to AZ issues.



=head2 Name => Str

Name of the input.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.



=head2 Sources => ArrayRef[MediaLive_InputSourceRequest]

The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInput in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

