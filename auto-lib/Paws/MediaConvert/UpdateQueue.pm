
package Paws::MediaConvert::UpdateQueue;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/queues/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::UpdateQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::UpdateQueue - Arguments for method UpdateQueue on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueue on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method UpdateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueue.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $UpdateQueueResponse = $mediaconvert->UpdateQueue(
      Name        => 'My__string',
      Description => 'My__string',    # OPTIONAL
      Status      => 'ACTIVE',        # OPTIONAL
    );

    # Results:
    my $Queue = $UpdateQueueResponse->Queue;

    # Returns a L<Paws::MediaConvert::UpdateQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/UpdateQueue>

=head1 ATTRIBUTES


=head2 Description => Str

The new description for the queue, if you are changing it.



=head2 B<REQUIRED> Name => Str

The name of the queue you are modifying.



=head2 Status => Str



Valid values are: C<"ACTIVE">, C<"PAUSED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueue in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

