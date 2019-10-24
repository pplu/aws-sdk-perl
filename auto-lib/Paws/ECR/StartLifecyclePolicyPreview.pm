# Generated from json/callargs_class.tt

package Paws::ECR::StartLifecyclePolicyPreview;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has LifecyclePolicyText => (is => 'ro', isa => Str, predicate => 1);
  has RegistryId => (is => 'ro', isa => Str, predicate => 1);
  has RepositoryName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartLifecyclePolicyPreview');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECR::StartLifecyclePolicyPreviewResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RegistryId' => {
                                 'type' => 'Str'
                               },
               'LifecyclePolicyText' => {
                                          'type' => 'Str'
                                        },
               'RepositoryName' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'RegistryId' => 'registryId',
                       'LifecyclePolicyText' => 'lifecyclePolicyText',
                       'RepositoryName' => 'repositoryName'
                     },
  'IsRequired' => {
                    'RepositoryName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartLifecyclePolicyPreview - Arguments for method StartLifecyclePolicyPreview on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartLifecyclePolicyPreview on the
L<Amazon EC2 Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method StartLifecyclePolicyPreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartLifecyclePolicyPreview.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $StartLifecyclePolicyPreviewResponse =
      $api . ecr->StartLifecyclePolicyPreview(
      RepositoryName      => 'MyRepositoryName',
      LifecyclePolicyText => 'MyLifecyclePolicyText',    # OPTIONAL
      RegistryId          => 'MyRegistryId',             # OPTIONAL
      );

    # Results:
    my $LifecyclePolicyText =
      $StartLifecyclePolicyPreviewResponse->LifecyclePolicyText;
    my $RegistryId     = $StartLifecyclePolicyPreviewResponse->RegistryId;
    my $RepositoryName = $StartLifecyclePolicyPreviewResponse->RepositoryName;
    my $Status         = $StartLifecyclePolicyPreviewResponse->Status;

    # Returns a L<Paws::ECR::StartLifecyclePolicyPreviewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/StartLifecyclePolicyPreview>

=head1 ATTRIBUTES


=head2 LifecyclePolicyText => Str

The policy to be evaluated against. If you do not specify a policy, the
current policy for the repository is used.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to be evaluated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartLifecyclePolicyPreview in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

