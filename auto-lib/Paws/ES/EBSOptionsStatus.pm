package Paws::ES::EBSOptionsStatus;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ES::EBSOptions', required => 1);
  has Status => (is => 'ro', isa => 'Paws::ES::OptionStatus', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::EBSOptionsStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::EBSOptionsStatus object:

  $service_obj->Method(Att1 => { Options => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::EBSOptionsStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Options

=head1 DESCRIPTION

Status of the EBS options for the specified Elasticsearch domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Options => L<Paws::ES::EBSOptions>

  Specifies the EBS options for the specified Elasticsearch domain.


=head2 B<REQUIRED> Status => L<Paws::ES::OptionStatus>

  Specifies the status of the EBS options for the specified Elasticsearch
domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

