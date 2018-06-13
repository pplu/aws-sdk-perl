
package Paws::Kinesis::ListStreams;
  use Moose;
  has ExclusiveStartStreamName => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListStreamsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListStreams - Arguments for method ListStreams on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreams on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method ListStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreams.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $ListStreamsOutput = $kinesis->ListStreams(
      ExclusiveStartStreamName => 'MyStreamName',    # OPTIONAL
      Limit                    => 1,                 # OPTIONAL
    );

    # Results:
    my $HasMoreStreams = $ListStreamsOutput->HasMoreStreams;
    my $StreamNames    = $ListStreamsOutput->StreamNames;

    # Returns a L<Paws::Kinesis::ListStreamsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/ListStreams>

=head1 ATTRIBUTES


=head2 ExclusiveStartStreamName => Str

The name of the stream to start the list with.



=head2 Limit => Int

The maximum number of streams to list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreams in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

