
package Paws::Kendra::UpdateThesaurus;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SourceS3Path => (is => 'ro', isa => 'Paws::Kendra::S3Path');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThesaurus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateThesaurus - Arguments for method UpdateThesaurus on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThesaurus on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateThesaurus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThesaurus.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateThesaurus(
      Id           => 'MyThesaurusId',
      IndexId      => 'MyIndexId',
      Description  => 'MyDescription',      # OPTIONAL
      Name         => 'MyThesaurusName',    # OPTIONAL
      RoleArn      => 'MyRoleArn',          # OPTIONAL
      SourceS3Path => {
        Bucket => 'MyS3BucketName',         # min: 3, max: 63
        Key    => 'MyS3ObjectKey',          # min: 1, max: 1024

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateThesaurus>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description of the thesaurus.



=head2 B<REQUIRED> Id => Str

The identifier of the thesaurus to update.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index associated with the thesaurus to update.



=head2 Name => Str

The updated name of the thesaurus.



=head2 RoleArn => Str

The updated role ARN of the thesaurus.



=head2 SourceS3Path => L<Paws::Kendra::S3Path>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThesaurus in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

