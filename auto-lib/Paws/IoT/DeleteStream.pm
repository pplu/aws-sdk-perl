
package Paws::IoT::DeleteStream;
  use Moose;
  has StreamId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'streamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streams/{streamId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteStream - Arguments for method DeleteStream on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteStream on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteStream.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DeleteStreamResponse = $iot->DeleteStream(
      StreamId => 'MyStreamId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamId => Str

The stream ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteStream in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

