
package Paws::Kendra::DescribeFaqResponse;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeFaqResponse

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The date and time that the FAQ was created.


=head2 Description => Str

The description of the FAQ that you provided when it was created.


=head2 ErrorMessage => Str

If the C<Status> field is C<FAILED>, the C<ErrorMessage> field contains
the reason why the FAQ failed.


=head2 Id => Str

The identifier of the FAQ.


=head2 IndexId => Str

The identifier of the index that contains the FAQ.


=head2 Name => Str

The name that you gave the FAQ when it was created.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role that provides access to the
S3 bucket containing the input files for the FAQ.


=head2 S3Path => L<Paws::Kendra::S3Path>




=head2 Status => Str

The status of the FAQ. It is ready to use when the status is C<ACTIVE>.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"ACTIVE">, C<"DELETING">, C<"FAILED">
=head2 UpdatedAt => Str

The date and time that the FAQ was last updated.


=head2 _request_id => Str


=cut

1;