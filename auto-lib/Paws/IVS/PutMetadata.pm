
package Paws::IVS::PutMetadata;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'channelArn', required => 1);
  has Metadata => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metadata', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::PutMetadata - Arguments for method PutMetadata on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetadata on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method PutMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetadata.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    $ivs->PutMetadata(
      ChannelArn => 'MyChannelArn',
      Metadata   => 'MyStreamMetadata',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/PutMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

ARN of the channel into which metadata is inserted. This channel must
have an active stream.



=head2 B<REQUIRED> Metadata => Str

Metadata to insert into the stream. Maximum: 1 KB per request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetadata in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

