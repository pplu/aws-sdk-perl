# Generated from json/callargs_class.tt

package Paws::LakeFormation::DeregisterResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::LakeFormation::Types qw//;
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeregisterResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::LakeFormation::DeregisterResourceResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::DeregisterResource - Arguments for method DeregisterResource on L<Paws::LakeFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterResource on the
L<AWS Lake Formation|Paws::LakeFormation> service. Use the attributes of this class
as arguments to method DeregisterResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterResource.

=head1 SYNOPSIS

    my $lakeformation = Paws->service('LakeFormation');
    my $DeregisterResourceResponse = $lakeformation->DeregisterResource(
      ResourceArn => 'MyResourceArnString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lakeformation/DeregisterResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource that you want to
deregister.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterResource in L<Paws::LakeFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

