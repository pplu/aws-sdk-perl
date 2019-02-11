package Paws::RDSData;
  use Moose;
  sub service { 'rds-data' }
  sub signing_name { 'rds-data' }
  sub version { '2018-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub ExecuteSql {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RDSData::ExecuteSql', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/ExecuteSql / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData - Perl Interface to AWS AWS RDS DataService

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('RDSData');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS RDS DataService provides Http Endpoint to query RDS databases.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data-2018-08-01>


=head1 METHODS

=head2 ExecuteSql

=over

=item AwsSecretStoreArn => Str

=item DbClusterOrInstanceArn => Str

=item SqlStatements => Str

=item [Database => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::RDSData::ExecuteSql>

Returns: a L<Paws::RDSData::ExecuteSqlResponse> instance

Executes any SQL statement on the target database synchronously




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

