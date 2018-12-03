
package Paws::Lightsail::GetRelationalDatabaseParameters;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabaseParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseParameters - Arguments for method GetRelationalDatabaseParameters on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseParameters on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseParameters.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseParametersResult =
      $lightsail->GetRelationalDatabaseParameters(
      RelationalDatabaseName => 'MyResourceName',
      PageToken              => 'Mystring',         # OPTIONAL
      );

    # Results:
    my $NextPageToken = $GetRelationalDatabaseParametersResult->NextPageToken;
    my $Parameters    = $GetRelationalDatabaseParametersResult->Parameters;

   # Returns a L<Paws::Lightsail::GetRelationalDatabaseParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseParameters>

=head1 ATTRIBUTES


=head2 PageToken => Str

A token used for advancing to a specific page of results for your C<get
relational database parameters> request.



=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database for which to get parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseParameters in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

