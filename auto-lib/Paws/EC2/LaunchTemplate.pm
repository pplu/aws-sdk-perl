package Paws::EC2::LaunchTemplate;
  use Moose;
  has CreatedBy => (is => 'ro', isa => 'Str', request_name => 'createdBy', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has DefaultVersionNumber => (is => 'ro', isa => 'Int', request_name => 'defaultVersionNumber', traits => ['NameInRequest']);
  has LatestVersionNumber => (is => 'ro', isa => 'Int', request_name => 'latestVersionNumber', traits => ['NameInRequest']);
  has LaunchTemplateId => (is => 'ro', isa => 'Str', request_name => 'launchTemplateId', traits => ['NameInRequest']);
  has LaunchTemplateName => (is => 'ro', isa => 'Str', request_name => 'launchTemplateName', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplate object:

  $service_obj->Method(Att1 => { CreatedBy => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedBy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreatedBy => Str

  The principal that created the launch template.


=head2 CreateTime => Str

  The time launch template was created.


=head2 DefaultVersionNumber => Int

  The version number of the default version of the launch template.


=head2 LatestVersionNumber => Int

  The version number of the latest version of the launch template.


=head2 LaunchTemplateId => Str

  The ID of the launch template.


=head2 LaunchTemplateName => Str

  The name of the launch template.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  The tags for the launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
