package Paws::DataPipeline::Tag;
  use Moose;
  has key => (is => 'ro', isa => 'Str', required => 1);
  has value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::Tag

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DataPipeline::Tag object:

  $service_obj->Method(Att1 => { key => $value, ..., value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DataPipeline::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->key

=head1 ATTRIBUTES

=head2 B<REQUIRED> key => Str

  

The key name of a tag defined by a user. For more information, see
Controlling User Access to Pipelines in the I<AWS Data Pipeline
Developer Guide>.










=head2 B<REQUIRED> value => Str

  

The optional value portion of a tag defined by a user. For more
information, see Controlling User Access to Pipelines in the I<AWS Data
Pipeline Developer Guide>.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DataPipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

