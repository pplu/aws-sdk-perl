
package Paws::RDSData::BeginTransaction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDSData::Types qw//;
  has Database => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Schema => (is => 'ro', isa => Str, predicate => 1);
  has SecretArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BeginTransaction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/BeginTransaction');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDSData::BeginTransactionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Schema' => {
                             'type' => 'Str'
                           },
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'Database' => {
                               'type' => 'Str'
                             },
               'SecretArn' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Schema' => 'schema',
                       'ResourceArn' => 'resourceArn',
                       'Database' => 'database',
                       'SecretArn' => 'secretArn'
                     },
  'IsRequired' => {
                    'ResourceArn' => 1,
                    'SecretArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::BeginTransaction - Arguments for method BeginTransaction on L<Paws::RDSData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BeginTransaction on the
L<AWS RDS DataService|Paws::RDSData> service. Use the attributes of this class
as arguments to method BeginTransaction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BeginTransaction.

=head1 SYNOPSIS

    my $rds-data = Paws->service('RDSData');
    my $BeginTransactionResponse = $rds -data->BeginTransaction(
      ResourceArn => 'MyArn',
      SecretArn   => 'MyArn',
      Database    => 'MyDbName',    # OPTIONAL
      Schema      => 'MyDbName',    # OPTIONAL
    );

    # Results:
    my $TransactionId = $BeginTransactionResponse->TransactionId;

    # Returns a L<Paws::RDSData::BeginTransactionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data/BeginTransaction>

=head1 ATTRIBUTES


=head2 Database => Str

The name of the database.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the Aurora Serverless DB cluster.



=head2 Schema => Str

The name of the database schema.



=head2 B<REQUIRED> SecretArn => Str

The name or ARN of the secret that enables access to the DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BeginTransaction in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

