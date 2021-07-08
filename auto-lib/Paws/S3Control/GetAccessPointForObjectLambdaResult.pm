
package Paws::S3Control::GetAccessPointForObjectLambdaResult;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3Control::PublicAccessBlockConfiguration');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointForObjectLambdaResult

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date and time when the specified Object Lambda Access Point was
created.



=head2 Name => Str

The name of the Object Lambda Access Point.



=head2 PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>

Configuration to block all public access. This setting is turned on and
can not be edited.




=cut

