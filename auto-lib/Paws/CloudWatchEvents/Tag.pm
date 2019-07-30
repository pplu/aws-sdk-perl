package Paws::CloudWatchEvents::Tag;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::Tag

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::Tag object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::Tag object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

A key-value pair associated with an AWS resource. In EventBridge, rules
support tagging.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  A string that you can use to assign a value. The combination of tag
keys and values can help you organize and categorize your resources.


=head2 B<REQUIRED> Value => Str

  The value for the specified tag key.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

