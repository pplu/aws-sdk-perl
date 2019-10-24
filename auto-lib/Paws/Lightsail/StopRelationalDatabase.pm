# Generated from json/callargs_class.tt

package Paws::Lightsail::StopRelationalDatabase;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lightsail::Types qw//;
  has RelationalDatabaseName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RelationalDatabaseSnapshotName => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StopRelationalDatabase');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lightsail::StopRelationalDatabaseResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RelationalDatabaseSnapshotName' => {
                                                     'type' => 'Str'
                                                   },
               'RelationalDatabaseName' => {
                                             'type' => 'Str'
                                           }
             },
  'NameInRequest' => {
                       'RelationalDatabaseSnapshotName' => 'relationalDatabaseSnapshotName',
                       'RelationalDatabaseName' => 'relationalDatabaseName'
                     },
  'IsRequired' => {
                    'RelationalDatabaseName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::StopRelationalDatabase - Arguments for method StopRelationalDatabase on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopRelationalDatabase on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method StopRelationalDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopRelationalDatabase.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $StopRelationalDatabaseResult = $lightsail->StopRelationalDatabase(
      RelationalDatabaseName         => 'MyResourceName',
      RelationalDatabaseSnapshotName => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Operations = $StopRelationalDatabaseResult->Operations;

    # Returns a L<Paws::Lightsail::StopRelationalDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/StopRelationalDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database to stop.



=head2 RelationalDatabaseSnapshotName => Str

The name of your new database snapshot to be created before stopping
your database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopRelationalDatabase in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

