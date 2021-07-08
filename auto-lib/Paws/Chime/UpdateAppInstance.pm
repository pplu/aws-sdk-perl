
package Paws::Chime::UpdateAppInstance;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appInstanceArn', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances/{appInstanceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::UpdateAppInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateAppInstance - Arguments for method UpdateAppInstance on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppInstance on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateAppInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppInstance.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateAppInstanceResponse = $chime->UpdateAppInstance(
      AppInstanceArn => 'MyChimeArn',
      Name           => 'MyNonEmptyResourceName',
      Metadata       => 'MyMetadata',               # OPTIONAL
    );

    # Results:
    my $AppInstanceArn = $UpdateAppInstanceResponse->AppInstanceArn;

    # Returns a L<Paws::Chime::UpdateAppInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateAppInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 Metadata => Str

The metadata that you want to change.



=head2 B<REQUIRED> Name => Str

The name that you want to change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppInstance in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

