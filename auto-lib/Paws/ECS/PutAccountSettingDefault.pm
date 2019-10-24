# Generated from json/callargs_class.tt

package Paws::ECS::PutAccountSettingDefault;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECS::Types qw//;
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Value => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'PutAccountSettingDefault');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::PutAccountSettingDefaultResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Value' => 'value',
                       'Name' => 'name'
                     },
  'IsRequired' => {
                    'Value' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAccountSettingDefault - Arguments for method PutAccountSettingDefault on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAccountSettingDefault on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method PutAccountSettingDefault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAccountSettingDefault.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $PutAccountSettingDefaultResponse = $ecs->PutAccountSettingDefault(
      Name  => 'serviceLongArnFormat',
      Value => 'MyString',

    );

    # Results:
    my $Setting = $PutAccountSettingDefaultResponse->Setting;

    # Returns a L<Paws::ECS::PutAccountSettingDefaultResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/PutAccountSettingDefault>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The resource name for which to modify the account setting. If
C<serviceLongArnFormat> is specified, the ARN for your Amazon ECS
services is affected. If C<taskLongArnFormat> is specified, the ARN and
resource ID for your Amazon ECS tasks is affected. If
C<containerInstanceLongArnFormat> is specified, the ARN and resource ID
for your Amazon ECS container instances is affected. If
C<awsvpcTrunking> is specified, the ENI limit for your Amazon ECS
container instances is affected.

Valid values are: C<"serviceLongArnFormat">, C<"taskLongArnFormat">, C<"containerInstanceLongArnFormat">, C<"awsvpcTrunking">

=head2 B<REQUIRED> Value => Str

The account setting value for the specified principal ARN. Accepted
values are C<enabled> and C<disabled>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAccountSettingDefault in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

