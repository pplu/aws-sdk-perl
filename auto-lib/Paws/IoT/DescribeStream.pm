
package Paws::IoT::DescribeStream;
  use Moose;
  has StreamId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'streamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/streams/{streamId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeStreamResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeStream - Arguments for method DescribeStream on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStream on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStream.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeStreamResponse = $iot->DescribeStream(
      StreamId => 'MyStreamId',

    );

    # Results:
    my $StreamInfo = $DescribeStreamResponse->StreamInfo;

    # Returns a L<Paws::IoT::DescribeStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamId => Str

The stream ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStream in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

