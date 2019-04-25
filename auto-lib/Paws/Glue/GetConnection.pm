
package Paws::Glue::GetConnection;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has HidePassword => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetConnectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetConnection - Arguments for method GetConnection on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnection on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnection.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetConnectionResponse = $glue->GetConnection(
      Name         => 'MyNameString',
      CatalogId    => 'MyCatalogIdString',    # OPTIONAL
      HidePassword => 1,                      # OPTIONAL
    );

    # Results:
    my $Connection = $GetConnectionResponse->Connection;

    # Returns a L<Paws::Glue::GetConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetConnection>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog in which the connection resides. If none is
supplied, the AWS account ID is used by default.



=head2 HidePassword => Bool

Allow you to retrieve the connection metadata without displaying the
password. For instance, the AWS Glue console uses this flag to retrieve
connections, since the console does not display passwords. Set this
parameter where the caller may not have permission to use the KMS key
to decrypt the password, but does have permission to access the rest of
the connection metadata (that is, the other connection properties).



=head2 B<REQUIRED> Name => Str

The name of the connection definition to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnection in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

