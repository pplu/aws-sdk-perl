package Paws::DataPipeline::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', request_name => 'key', traits => ['NameInRequest'], required => 1);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Tags are key/value pairs defined by a user and associated with a
pipeline to control access. AWS Data Pipeline allows you to associate
ten tags per pipeline. For more information, see Controlling User
Access to Pipelines
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html)
in the I<AWS Data Pipeline Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  The key name of a tag defined by a user. For more information, see
Controlling User Access to Pipelines
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html)
in the I<AWS Data Pipeline Developer Guide>.


=head2 B<REQUIRED> Value => Str

  The optional value portion of a tag defined by a user. For more
information, see Controlling User Access to Pipelines
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-control-access.html)
in the I<AWS Data Pipeline Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

