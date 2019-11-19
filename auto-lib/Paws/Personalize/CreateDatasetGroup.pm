# Generated from json/callargs_class.tt

package Paws::Personalize::CreateDatasetGroup;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Personalize::Types qw//;
  has KmsKeyArn => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDatasetGroup');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Personalize::CreateDatasetGroupResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Name' => 1
                  },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'Name' => 'name',
                       'KmsKeyArn' => 'kmsKeyArn'
                     },
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'KmsKeyArn' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateDatasetGroup - Arguments for method CreateDatasetGroup on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDatasetGroup on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method CreateDatasetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDatasetGroup.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $CreateDatasetGroupResponse = $personalize->CreateDatasetGroup(
      Name      => 'MyName',
      KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      RoleArn   => 'MyRoleArn',      # OPTIONAL
    );

    # Results:
    my $DatasetGroupArn = $CreateDatasetGroupResponse->DatasetGroupArn;

    # Returns a L<Paws::Personalize::CreateDatasetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/CreateDatasetGroup>

=head1 ATTRIBUTES


=head2 KmsKeyArn => Str

The Amazon Resource Name (ARN) of a KMS key used to encrypt the
datasets.



=head2 B<REQUIRED> Name => Str

The name for the new dataset group.



=head2 RoleArn => Str

The ARN of the IAM role that has permissions to access the KMS key.
Supplying an IAM role is only valid when also specifying a KMS key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDatasetGroup in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

