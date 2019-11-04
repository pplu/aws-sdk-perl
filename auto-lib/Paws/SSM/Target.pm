# Generated from default/object.tt
package Paws::SSM::Target;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::SSM::Types qw//;
  has Key => (is => 'ro', isa => Str);
  has Values => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Values' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Key' => {
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

Paws::SSM::Target

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Target object:

  $service_obj->Method(Att1 => { Key => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Target object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

An array of search criteria that targets instances using a Key,Value
combination that you specify.

Supported formats include the following.

=over

=item *

C<Key=InstanceIds,Values=I<instance-id-1>,I<instance-id-2>,I<instance-id-3>>

=item *

C<Key=tag:I<my-tag-key>,Values=I<my-tag-value-1>,I<my-tag-value-2>>

=item *

C<Key=tag-key,Values=I<my-tag-key-1>,I<my-tag-key-2>>

=item *

(Maintenance window targets only)
C<Key=resource-groups:Name,Values=I<resource-group-name>>

=item *

(Maintenance window targets only)
C<Key=resource-groups:ResourceTypeFilters,Values=I<resource-type-1>,I<resource-type-2>>

=back

For example:

=over

=item *

C<Key=InstanceIds,Values=i-02573cafcfEXAMPLE,i-0471e04240EXAMPLE,i-07782c72faEXAMPLE>

=item *

C<Key=tag:CostCenter,Values=CostCenter1,CostCenter2,CostCenter3>

=item *

C<Key=tag-key,Values=Name,Instance-Type,CostCenter>

=item *

(Maintenance window targets only)
C<Key=resource-groups:Name,Values=ProductionResourceGroup>

=item *

(Maintenance window targets only)
C<Key=resource-groups:ResourceTypeFilters,Values=I<AWS::EC2::INSTANCE>,I<AWS::EC2::VPC>>

=back

For information about how to send commands that target instances using
C<Key,Value> parameters, see Using Targets and Rate Controls to Send
Commands to a Fleet
(https://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html#send-commands-targeting)
in the I<AWS Systems Manager User Guide>.

=head1 ATTRIBUTES


=head2 Key => Str

  User-defined criteria for sending commands that target instances that
meet the criteria.


=head2 Values => ArrayRef[Str|Undef]

  User-defined criteria that maps to C<Key>. For example, if you
specified C<tag:ServerRole>, you could specify C<value:WebServer> to
run a command on instances that include Amazon EC2 tags of
C<ServerRole,WebServer>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

