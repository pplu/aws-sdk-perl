
package Paws::Kendra::DescribeDataSourceResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeDataSourceResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::DataSourceConfiguration>

Information that describes where the data source is located and how the
data source is configured. The specific information in the description
depends on the data source provider.


=head2 CreatedAt => Str

The Unix timestamp of when the data source was created.


=head2 Description => Str

The description of the data source.


=head2 ErrorMessage => Str

When the C<Status> field value is C<FAILED>, the C<ErrorMessage> field
contains a description of the error that caused the data source to
fail.


=head2 Id => Str

The identifier of the data source.


=head2 IndexId => Str

The identifier of the index that contains the data source.


=head2 Name => Str

The name that you gave the data source when it was created.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role that enables the data source
to access its resources.


=head2 Schedule => Str

The schedule that Amazon Kendra will update the data source.


=head2 Status => Str

The current status of the data source. When the status is C<ACTIVE> the
data source is ready to use. When the status is C<FAILED>, the
C<ErrorMessage> field contains the reason that the data source failed.

Valid values are: C<"CREATING">, C<"DELETING">, C<"FAILED">, C<"UPDATING">, C<"ACTIVE">
=head2 Type => Str

The type of the data source.

Valid values are: C<"S3">, C<"SHAREPOINT">, C<"DATABASE">, C<"SALESFORCE">, C<"ONEDRIVE">, C<"SERVICENOW">, C<"CUSTOM">, C<"CONFLUENCE">, C<"GOOGLEDRIVE">
=head2 UpdatedAt => Str

The Unix timestamp of when the data source was last updated.


=head2 _request_id => Str


=cut

1;