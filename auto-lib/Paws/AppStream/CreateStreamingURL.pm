
package Paws::AppStream::CreateStreamingURL;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has FleetName => (is => 'ro', isa => 'Str', required => 1);
  has SessionContext => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has Validity => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStreamingURL');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateStreamingURLResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateStreamingURL - Arguments for method CreateStreamingURL on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStreamingURL on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method CreateStreamingURL.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStreamingURL.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $CreateStreamingURLResult = $appstream2->CreateStreamingURL(
      FleetName      => 'MyString',
      StackName      => 'MyString',
      UserId         => 'MyStreamingUrlUserId',
      ApplicationId  => 'MyString',               # OPTIONAL
      SessionContext => 'MyString',               # OPTIONAL
      Validity       => 1,                        # OPTIONAL
    );

    # Results:
    my $Expires      = $CreateStreamingURLResult->Expires;
    my $StreamingURL = $CreateStreamingURLResult->StreamingURL;

    # Returns a L<Paws::AppStream::CreateStreamingURLResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/CreateStreamingURL>

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The name of the application to launch after the session starts. This is
the name that you specified as B<Name> in the Image Assistant.



=head2 B<REQUIRED> FleetName => Str

The name of the fleet.



=head2 SessionContext => Str

The session context. For more information, see Session Context
(http://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters)
in the I<Amazon AppStream 2.0 Developer Guide>.



=head2 B<REQUIRED> StackName => Str

The name of the stack.



=head2 B<REQUIRED> UserId => Str

The identifier of the user.



=head2 Validity => Int

The time that the streaming URL will be valid, in seconds. Specify a
value between 1 and 604800 seconds. The default is 60 seconds.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStreamingURL in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

