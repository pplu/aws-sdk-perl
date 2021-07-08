
package Paws::SESv2::CreateImportJob;
  use Moose;
  has ImportDataSource => (is => 'ro', isa => 'Paws::SESv2::ImportDataSource', required => 1);
  has ImportDestination => (is => 'ro', isa => 'Paws::SESv2::ImportDestination', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/import-jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::CreateImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateImportJob - Arguments for method CreateImportJob on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImportJob on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method CreateImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImportJob.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $CreateImportJobResponse = $email->CreateImportJob(
      ImportDataSource => {
        DataFormat => 'CSV',       # values: CSV, JSON
        S3Url      => 'MyS3Url',

      },
      ImportDestination => {
        ContactListDestination => {
          ContactListImportAction => 'DELETE',             # values: DELETE, PUT
          ContactListName         => 'MyContactListName',

        },    # OPTIONAL
        SuppressionListDestination => {
          SuppressionListImportAction => 'DELETE',    # values: DELETE, PUT

        },    # OPTIONAL
      },

    );

    # Results:
    my $JobId = $CreateImportJobResponse->JobId;

    # Returns a L<Paws::SESv2::CreateImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/CreateImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportDataSource => L<Paws::SESv2::ImportDataSource>

The data source for the import job.



=head2 B<REQUIRED> ImportDestination => L<Paws::SESv2::ImportDestination>

The destination for the import job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImportJob in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

