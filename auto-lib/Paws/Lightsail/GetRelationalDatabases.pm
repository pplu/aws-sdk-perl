
package Paws::Lightsail::GetRelationalDatabases;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabasesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabases - Arguments for method GetRelationalDatabases on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabases on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabases.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabasesResult = $lightsail->GetRelationalDatabases(
      PageToken => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $NextPageToken = $GetRelationalDatabasesResult->NextPageToken;
    my $RelationalDatabases =
      $GetRelationalDatabasesResult->RelationalDatabases;

    # Returns a L<Paws::Lightsail::GetRelationalDatabasesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabases>

=head1 ATTRIBUTES


=head2 PageToken => Str

A token used for advancing to a specific page of results for your C<get
relational database> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabases in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

