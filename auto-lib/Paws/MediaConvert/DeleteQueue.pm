
package Paws::MediaConvert::DeleteQueue;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/queues/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::DeleteQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DeleteQueue - Arguments for method DeleteQueue on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteQueue on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method DeleteQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteQueue.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $DeleteQueueResponse = $mediaconvert->DeleteQueue(
      Name => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/DeleteQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the queue that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteQueue in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

