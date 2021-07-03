
package Paws::Kendra::UpdateIndex;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DocumentMetadataConfigurationUpdates => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentMetadataConfiguration]');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndex');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateIndex - Arguments for method UpdateIndex on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndex on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndex.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateIndex(
      Id                                   => 'MyIndexId',
      Description                          => 'MyDescription',    # OPTIONAL
      DocumentMetadataConfigurationUpdates => [
        {
          Name => 'MyDocumentMetadataConfigurationName',    # min: 1, max: 30
          Type => 'STRING_VALUE'
          ,    # values: STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE
          Relevance => {
            Duration   => 'MyDuration',    # min: 1, max: 10; OPTIONAL
            Freshness  => 1,               # OPTIONAL
            Importance => 1,               # min: 1, max: 10; OPTIONAL
            RankOrder  => 'ASCENDING', # values: ASCENDING, DESCENDING; OPTIONAL
            ValueImportanceMap => {
              'MyValueImportanceMapKey' =>
                1,    # key: min: 1, max: 50, value: min: 1, max: 10; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Search => {
            Displayable => 1,    # OPTIONAL
            Facetable   => 1,    # OPTIONAL
            Searchable  => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Name    => 'MyIndexName',    # OPTIONAL
      RoleArn => 'MyRoleArn',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateIndex>

=head1 ATTRIBUTES


=head2 Description => Str

A new description for the index.



=head2 DocumentMetadataConfigurationUpdates => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]

The document metadata to update.



=head2 B<REQUIRED> Id => Str

The identifier of the index to update.



=head2 Name => Str

The name of the index to update.



=head2 RoleArn => Str

A new IAM role that gives Amazon Kendra permission to access your
Amazon CloudWatch logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndex in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

