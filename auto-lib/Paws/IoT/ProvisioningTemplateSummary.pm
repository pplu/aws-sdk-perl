package Paws::IoT::ProvisioningTemplateSummary;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', request_name => 'creationDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Enabled => (is => 'ro', isa => 'Bool', request_name => 'enabled', traits => ['NameInRequest']);
  has LastModifiedDate => (is => 'ro', isa => 'Str', request_name => 'lastModifiedDate', traits => ['NameInRequest']);
  has TemplateArn => (is => 'ro', isa => 'Str', request_name => 'templateArn', traits => ['NameInRequest']);
  has TemplateName => (is => 'ro', isa => 'Str', request_name => 'templateName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ProvisioningTemplateSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ProvisioningTemplateSummary object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., TemplateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ProvisioningTemplateSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

A summary of information about a fleet provisioning template.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date when the fleet provisioning template summary was created.


=head2 Description => Str

  The description of the fleet provisioning template.


=head2 Enabled => Bool

  True if the fleet provision template is enabled, otherwise false.


=head2 LastModifiedDate => Str

  The date when the fleet provisioning template summary was last
modified.


=head2 TemplateArn => Str

  The ARN of the fleet provisioning template.


=head2 TemplateName => Str

  The name of the fleet provisioning template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

