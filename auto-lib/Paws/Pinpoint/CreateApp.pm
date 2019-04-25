
package Paws::Pinpoint::CreateApp;
  use Moose;
  has CreateApplicationRequest => (is => 'ro', isa => 'Paws::Pinpoint::CreateApplicationRequest', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CreateApplicationRequest');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateAppResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateApp - Arguments for method CreateApp on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApp on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApp.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateAppResponse = $pinpoint->CreateApp(
      CreateApplicationRequest => {
        Name => 'My__string',    # OPTIONAL
      },

    );

    # Results:
    my $ApplicationResponse = $CreateAppResponse->ApplicationResponse;

    # Returns a L<Paws::Pinpoint::CreateAppResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateApp>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateApplicationRequest => L<Paws::Pinpoint::CreateApplicationRequest>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApp in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

