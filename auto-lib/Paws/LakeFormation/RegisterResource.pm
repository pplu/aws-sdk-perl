# Generated from json/callargs_class.tt

package Paws::LakeFormation::RegisterResource;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::LakeFormation::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, predicate => 1);
  has UseServiceLinkedRole => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'RegisterResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LakeFormation::RegisterResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'UseServiceLinkedRole' => {
                                           'type' => 'Bool'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::RegisterResource - Arguments for method RegisterResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method RegisterResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $RegisterResourceResponse = $lakeformation->RegisterResource(
      ResourceArn          => 'MyResourceArnString',
      RoleArn              => 'MyIAMRoleArn',          # OPTIONAL
      UseServiceLinkedRole => 1,                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/RegisterResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to
register.



=head2 RoleArn => Str

The identifier for the role.



=head2 UseServiceLinkedRole => Bool

Designates a trusted caller, an IAM principal, by registering this
caller with the Data Catalog.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

