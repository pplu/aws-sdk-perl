# Generated from callargs_class.tt

package Paws::RDS::StopActivityStream;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::RDS::Types qw//;
  has ApplyImmediately => (is => 'ro', isa => Bool, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopActivityStream');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::StopActivityStreamResponse');
  class_has _result_key => (isa => Str, is => 'ro', default => 'StopActivityStreamResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplyImmediately' => {
                                       'type' => 'Bool'
                                     },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::StopActivityStream - Arguments for method StopActivityStream on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopActivityStream on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method StopActivityStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopActivityStream.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $StopActivityStreamResponse = $rds->StopActivityStream(
      ResourceArn      => 'MyString',
      ApplyImmediately => 1,            # OPTIONAL
    );

    # Results:
    my $KinesisStreamName = $StopActivityStreamResponse->KinesisStreamName;
    my $KmsKeyId          = $StopActivityStreamResponse->KmsKeyId;
    my $Status            = $StopActivityStreamResponse->Status;

    # Returns a L<Paws::RDS::StopActivityStreamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/StopActivityStream>

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

Specifies whether or not the database activity stream is to stop as
soon as possible, regardless of the maintenance window for the
database.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DB cluster for the database
activity stream. For example,
C<arn:aws:rds:us-east-1:12345667890:cluster:das-cluster>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopActivityStream in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

