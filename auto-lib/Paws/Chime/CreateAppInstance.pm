
package Paws::Chime::CreateAppInstance;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/app-instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateAppInstanceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateAppInstance - Arguments for method CreateAppInstance on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppInstance on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateAppInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppInstance.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateAppInstanceResponse = $chime->CreateAppInstance(
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyNonEmptyResourceName',
      Metadata           => 'MyMetadata',               # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $AppInstanceArn = $CreateAppInstanceResponse->AppInstanceArn;

    # Returns a L<Paws::Chime::CreateAppInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateAppInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientRequestToken => Str

The C<ClientRequestToken> of the C<AppInstance>.



=head2 Metadata => Str

The metadata of the C<AppInstance>. Limited to a 1KB string in UTF-8.



=head2 B<REQUIRED> Name => Str

The name of the C<AppInstance>.



=head2 Tags => ArrayRef[L<Paws::Chime::Tag>]

Tags assigned to the C<AppInstanceUser>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppInstance in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

