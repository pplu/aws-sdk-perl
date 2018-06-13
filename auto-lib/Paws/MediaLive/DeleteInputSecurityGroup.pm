
package Paws::MediaLive::DeleteInputSecurityGroup;
  use Moose;
  has InputSecurityGroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'inputSecurityGroupId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInputSecurityGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/inputSecurityGroups/{inputSecurityGroupId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DeleteInputSecurityGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteInputSecurityGroup - Arguments for method DeleteInputSecurityGroup on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInputSecurityGroup on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DeleteInputSecurityGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInputSecurityGroup.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DeleteInputSecurityGroupResponse = $medialive->DeleteInputSecurityGroup(
      InputSecurityGroupId => 'My__string',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DeleteInputSecurityGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputSecurityGroupId => Str

The Input Security Group to delete




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInputSecurityGroup in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

