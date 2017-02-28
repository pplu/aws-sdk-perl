package Paws::ES::InstanceCountLimits;
  use Moose;
  has MaximumInstanceCount => (is => 'ro', isa => 'Int');
  has MinimumInstanceCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::InstanceCountLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::InstanceCountLimits object:

  $service_obj->Method(Att1 => { MaximumInstanceCount => $value, ..., MinimumInstanceCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::InstanceCountLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->MaximumInstanceCount

=head1 DESCRIPTION

InstanceCountLimits represents the limits on number of instances that
be created in Amazon Elasticsearch for given InstanceType.

=head1 ATTRIBUTES


=head2 MaximumInstanceCount => Int

  


=head2 MinimumInstanceCount => Int

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

