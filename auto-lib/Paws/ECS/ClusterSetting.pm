package Paws::ECS::ClusterSetting;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ClusterSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::ClusterSetting object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::ClusterSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The settings to use when creating a cluster. This parameter is used to
enable CloudWatch Container Insights for a cluster.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the cluster setting. The only supported value is
C<containerInsights>.


=head2 Value => Str

  The value to set for the cluster setting. The supported values are
C<enabled> and C<disabled>. If C<enabled> is specified, CloudWatch
Container Insights will be enabled for the cluster, otherwise it will
be disabled unless the C<containerInsights> account setting is enabled.
If a cluster value is specified, it will override the
C<containerInsights> value set with PutAccountSetting or
PutAccountSettingDefault.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

